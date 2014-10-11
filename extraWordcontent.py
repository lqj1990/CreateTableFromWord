#! /usr/bin/env python
#coding=utf-8
import re
import sys
import os
from win32com import client as wc
import pywintypes
import cx_Oracle

FLAG = 0
FILENAME = "\\xx.docx"
CONNECT = "test/test@TEST"
SQLFILENAME = "CreateTablesxx.sql"

class DBTable:
    Name = ""
    Keys = ""
    Remark = ""
    Records = []
        
class DBTableRecord:
    Name = ""
    Type = ""
    Length = ""
    IsNull = True
    Remark = ""
    Default = ""
    Alias = ""


#fileHandler = open("TestPyWin32.txt","w")
reload(sys)
sys.setdefaultencoding('utf-8')

word = wc.Dispatch("Word.Application")
dir = os.getcwd()
doc = word.Documents.Open(dir + FILENAME)
tables = doc.Tables
flag = 0
count = 0
tableList = []
for table in tables:
    rownum = 0
    rows = table.Rows
    tableTmp = DBTable()
    tableTmp.Records = []
    try:
        #print len(rows)
        for row in rows: 
            colnum = 0
            rownum = rownum + 1
            cols = row.Cells 
            if tableTmp != None:
                record = DBTableRecord()
                for col in cols: 
                    colnum = colnum + 1  
                    contentText = col.Range.Text[0:-2]
                    contentText = contentText.upper()
                    #print("%s:%s:%s\n" % (rownum, colnum, contentText))
                    if tableTmp != None: 
                        if rownum == 1:
                            if colnum == 1:
                                print ("%s:%s\n" % (contentText, "表名"))
                                if contentText != u"表名":
                                    #fileHandler.write("%s:%s\n" % (contentText, u"表名"))
                                    tableTmp = None
                                    break
                            elif colnum == 2:
                                tableTmp.Name = contentText.replace(" ","")
                            elif colnum == 3:
                                tableTmp.Remark = contentText.replace(" ","")
                        elif rownum == 2:
                           if colnum == 1:
                               if contentText != u"主键":
                                    tableTmp = None
                                    break
                           else:
                               tmp = contentText.replace(" ","")
                               tmp = re.search("[A-za-z0-9]+.\+.[A-za-z0-9]+|[A-za-z0-9]+",tmp)
                               if tmp != None:
                                   tableTmp.Keys = re.sub("\+",",",tmp.group())
                                   #print tableTmp.Keys
                        elif rownum == 3:
                           if colnum == 1:
                               if contentText != u"字段名称":
                                   tableTmp = None
                                   break
                           elif colnum == 2:
                               if contentText != u"数据类型":
                                   tableTmp = None
                                   break 
                           elif colnum == 3:
                               if contentText != u"大小":
                                  tableTmp = None
                                  break 
                           elif colnum == 4:
                               if contentText != u"是否可空":
                                  tableTmp = None
                                  break
                           elif colnum == 5:
                               if contentText != u"字段说明":
                                  tableTmp = None
                                  break
                           elif colnum == 6:
                               if contentText != u"缺省值":
                                 tableTmp = None
                               break
                           elif colnum == 7:
                               if contentText != u"备注":
                                  tableTmp = None
                               break
                           else:
                               tableTmp = None
                               break
                        else:
                           if colnum == 1:
                               record.Name = contentText.replace(" ","")
                           elif colnum == 2:
                               record.Type = contentText.replace(" ","")
                           elif colnum == 3:
                               tmp = re.search("\d+.\d+|\d+",contentText)
                               if tmp != None:
                                   record.Length = "("+tmp.group()+")"
                           elif colnum == 4:
                               if contentText != u"是":
                                   record.IsNull = False
                           elif colnum == 5:
                               record.Alias = contentText
                           elif colnum == 6:
                               if record.Name.upper() == "WRITETIME":
                                    record.Default = "sysdate"
                               else:
                                    record.Default = contentText
                           elif colnum == 7:
                               tmp = re.search("guid",contentText,re.IGNORECASE)
                               if tmp != None and record.Default == "":
                                   record.Default = "sys_guid()"
                               record.Remark = contentText
                           else:
                               break;  
                    else:
                        break
                if record.Name != "":
                    tableTmp.Records.append(record)
                    print record.Default
            else:
                break
    except pywintypes.com_error as error:
        tableTmp = None
    if tableTmp != None :
        tableList.append(tableTmp)
#输出储存的表信息
'''filex = open("tables.txt","w")
reload(sys)
sys.setdefaultencoding('utf-8')
for table in tableList:
    filex.write("" + table.Name + " " +table.Remark + "\n")
    filex.write("" + table.Keys + "\n")
    for record in table.Records:
        filex.write(record.Name + " " + record.Alias+" " )
        filex.write(record.Type + record.Length+str(record.IsNull)+ "\n")
    filex.write("\n")
filex.write("\n")
filex.close()'''
#输出sql语句
fileSQL = open(SQLFILENAME,"w")
reload(sys)
sys.setdefaultencoding('utf-8')

strCreateTablePattern = "-- Create table\ncreate table %(tablename)s\n(\n%(sqlcol)s\n);\n"
strCommentTablePattern = "-- Add comments to the table\n comment on table %(tablename)s\n  is '%(tableremark)s';\n"
strCommentColumnPattern = "-- Add comments to the columns \ncomment on column %(tablename)s.%(colname)s \n  is '%(remark)s';\n"
strPrimaryKeyPattern = "alter table %(tablename)s\n  add constraint PK_%(tablerealname)s primary key (%(keys)s);\n"

print len(tableList)

for table in tableList:
    sqlcol = ""
    sqlcomment = ""  
    for record in table.Records:
        tmp = ""
        if record.IsNull == False:
            tmp = "not null"
        sqlcol = sqlcol+record.Name+" "+record.Type+record.Length+" "+tmp
        if record.Default == "":
            sqlcol = sqlcol+",\n"
        else:
            sqlcol = sqlcol+" default "+record.Default+",\n"        
        sqlcomment = sqlcomment + (strCommentColumnPattern % {"tablename":table.Name,"colname":record.Name,"remark":record.Alias})
    #print strCreateTablePattern%{"tablename":table.Name,"sqlcol":sqlcol[0:-2]}
    fileSQL.write((strCreateTablePattern%{"tablename":table.Name,"sqlcol":sqlcol[0:-2]}).encode("gbk"))
    fileSQL.write((strCommentTablePattern%{"tablename":table.Name,"tableremark":table.Remark}).encode("gbk"))
    fileSQL.write((sqlcomment).encode("gbk"))
    if table.Keys != "":
        name = table.Name.split("_")[-1]
        fileSQL.write((strPrimaryKeyPattern%{"tablename":table.Name,"tablerealname":name,"keys":table.Keys}).encode("gbk"))
    fileSQL.write("\n")
fileSQL.close()
doc.Close()
word.Quit()

if FLAG == 1:
    conn = cx_Oracle.connect(CONNECT) 
    cursor = conn.cursor()   
    fileHandler = open(SQLFILENAME)
    sqls = fileHandler.read().split(";")[0:-1]
    count = 0
    for sql in sqls:
        cursor.execute(sql)
    conn.close()
    fileHandler.close()

#fileHandler.close()

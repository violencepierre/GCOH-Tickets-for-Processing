from HierarchyMaker import hiymaker
from MappingNonLFF import mappingnonlffaktion
from MappingLFFRobot import mainloop
from test import testing
from os import system
from os import startfile
from time import sleep
import openpyxl as xl
import subprocess


x=1

while x != 0:
    ans=int(input("Choose what u wanna do: \n1. create hierarchy, \n2. create nonLFF mapping template, or \n3. use the LFF mapping rob0t, or \n4. exit cuz im a dummy \n\n(ENTER AN INTEGER FOR THE LOVE OF GOD) \n\n"))
    print("you entered ", ans, " lmao wtf")

    sleep(2)

    if ans==4:
        system("cls")
        print("thank u for using my pr0gram now fck off dummy")
        sleep(2)    
        system("cls")
        x=0

    elif ans==1:
        print("running hierarchy maker")
        print("opening pandas.xlsx")

       

        wb=xl.load_workbook("pandas.xlsx")
        ws=wb.active
        wb.save("pandasBAK.xlsx")
        ws.delete_rows(1, ws.max_row)

        ws['A1']="Parent"
        ws['B1']="Node"
        wb.save("pandas.xlsx")
        wb.close()

        doc = subprocess.Popen(["start", "/WAIT", "pandas.xlsx"], shell=True)
        system("cls")
        print("waiting for input.........")    
        sleep(2)     
        que=input("Save the file once you've input the Parent-Node relationships, close it, and then enter anything in this prompt: ")
        print("input received... running hierarchy maker now.........")
        hiymaker() 
        print("PROCESS COMPLETED!!!")
        print("REOPENING EXCEL FILE")
        doc = subprocess.Popen(["start", "/WAIT", "pandas.xlsx"], shell=True)
        sleep(2) 
        system("cls")


    elif ans==2:
        print("running nonlff template creator")   
        mappingnonlffaktion()
        sleep(2)
        system("cls")
        print("----------------------------")
        print("COMPLETED")
        print("----------------------------")
        print("----------------------------")

    elif ans==3:
        print("running lff r0bot") 
        mainloop()
        sleep(2)
        system("cls")
        print("----------------------------")
        print("----------------------------")
        print("----------------------------")
        print("----------------------------")
        print("COMPLETED")
        print("----------------------------")
        print("----------------------------")
        print("----------------------------")
   
    else:
        system("cls")
        sleep(2)
        print("----------------------------")
        print("----------------------------")
        print("----------------------------")
        print("----------------------------")
        print("bro what the f*ck i gave u a bunch of choices already")
        print("----------------------------")
        print("----------------------------")
        print("----------------------------")
        print("----------------------------")
        sleep(2)
        system("cls")


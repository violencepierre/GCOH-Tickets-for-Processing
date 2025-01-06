from HierarchyMaker import hiymaker
from MappingNonLFF import mappingnonlffaktion
from MappingLFFRobot import mainloop
from test import testing
from os import system
from time import sleep


x=1

while x != 0:
    ans=int(input("Choose what u wanna do: \n1. create hierarchy, \n2. create nonLFF mapping template, or \n3. use the LFF mapping rob0t, or \n4. exit cuz im a dummy \n\n(ENTER AN INTEGER FOR THE LOVE OF GOD) "))
    print("you entered ", ans, " lmao wtf")

    sleep(2)

    if ans==4:
        print("----------------------------")
        print("----------------------------")
        print("----------------------------")
        print("----------------------------")
        print("thank u for using my pr0gram good bye")
        x=0

    elif ans==1:
        print("running hierarchy maker")      
        hiymaker() 
        sleep(2) 
        system("cls")
        print("----------------------------")
        print("COMPLETED")
        print("----------------------------")
        print("----------------------------")


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


from HierarchyMaker import hiymaker
from MappingNonLFF import mappingnonlffaktion
from MappingLFFRobot import mainloop
from test import testing
from os import system


x=1

while x != 0:
    ans=int(input("Choose what u wanna do: \n1. create hierarchy, \n2. create nonLFF mapping template, or \n3. use the LFF mapping rob0t, or \n4. exit cuz im a dummy \n\n(ENTER AN INTEGER FOR THE LOVE OF GOD) "))
    if ans==4:
        print("----------------------------")
        print("----------------------------")
        print("----------------------------")
        print("----------------------------")
        print("thank u for using my pr0gram good bye")
        x=0

    elif ans==1:
        hiymaker()        

    elif ans==2:
        mappingnonlffaktion()

    elif ans==3:
        mainloop()

    else:

        print("bro what the f*ck i gave u a choice already")
        print("----------------------------")
        print("----------------------------")
        print("----------------------------")
        print("----------------------------")


import HierarchyMaker
from MappingNonLFF import mappingnonlffaktion
from MappingLFFRobot import mainloop
from test import testing
import openpyxl as xl
import subprocess
import os


def get_user_choice():
    while True:
        try:
            ans = int(input("Choose what u wanna do: \n1. create hierarchy, \n2. create nonLFF mapping template, or \n3. use the LFF mapping rob0t, or \n4. exit cuz im a dummy \n5. git pull (pls do this everytime i beg you) \n6. git coomit/push \n\n(ENTER AN INTEGER FOR THE LOVE OF GOD) \n\n"))
            if 1 <= ans <= 6:
                return ans
            else:
                print("Invalid input. Please enter a number between 1 and 6.")
        except ValueError:
            print("Invalid input. Please enter an integer.")


def run_hierarchy_maker():
    try:
        os.system('cls')
        print("running hierarchy maker")
        HierarchyMaker.hiymaker()
        print("Hierarchy Maker run successfully!")
    except Exception as e:
        print(f"Error running hierarchy maker: {e}")


def run_nonlff_template_creator():
    try:
        os.system('cls')
        print("running nonLFF template creator")
        mappingnonlffaktion()
        print("NonLFF template maker run successfully!")
    except Exception as e:
        print(f"Error creating nonLFF template: {e}")


def run_lff_robot():
    try:
        os.system('cls')
        print("running LFF r0bot")
        mainloop()
        print("LFF robot run successfully!!!")
    except Exception as e:
        print(f"Error running LFF robot: {e}")


def run_git_commands(choice):
    if choice == 5:
        os.system('cls')
        subprocess.run(["git", "pull"])
        print("GIT pulled please check if there are any erros")
    elif choice == 6:
        os.system('cls')
        subprocess.run(["git", "commit", "-a", "-m", "asdfasdfas"])
        subprocess.run(["git", "push"])
        print("GIT pushed please check if there are any erros")


def main():
    global x
    while True:
        x = get_user_choice()
        if x == 4:
            os.system('cls')
            print("thank u for using my pr0gram now fck off dummy")
            break
        elif x == 1:
            run_hierarchy_maker()
        elif x == 2:
            run_nonlff_template_creator()
        elif x == 3:
            run_lff_robot()
        elif x == 5:
            run_git_commands(5)
        elif x == 6:
            run_git_commands(6)


if __name__ == "__main__":
    main()

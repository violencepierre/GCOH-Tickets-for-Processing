import subprocess

str=input("What do you wanna run")

def switch(str):
    if str=="A":
        print("hy")
    if str=="B":
        text=subprocess.run("python","/test.py",capture_output=True,text=True)
        print(text.stdout)

   
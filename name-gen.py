import random

def read_list(file):
f = open(file, "r")
lst = f.read().splitlines()
f.clouse()
return lst

def name_case(list):
for i in range(0, len(list)):
list[i] = list[i].capitalize()

first_female = read_list("name-first-female.txt")
first_male = read_list("name-first-male.txt")
last_all = read_list("name-last-all.txt")

names = 100
f = open("marking-sample-names.sql", "w")
f.write("INSERT INTO marking_sample")
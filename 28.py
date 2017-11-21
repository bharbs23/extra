import re
value=[]
print("Input your password")
items=[x for x in raw_input().split(',')] 
for p in items:  

	x = True
	while x:  
		if (len(p)<6 or len(p)>12):
			break
		elif not re.search("[a-z]",p):
			break
		elif not re.search("[0-9]",p):
			break
		elif not re.search("[A-Z]",p):
			break
		elif not re.search("[$#@]",p):
			break
		elif re.search("\s",p):
			break
		else:
			value.append(p)
			
			x=False
			break
if len(value) == 0:		
		print("invalid Password")	
else:		
	print("Valid Password")			
	print ",".join(value)
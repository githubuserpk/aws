# Notes:
# In this lab, we have 2 Subnets: 1. First is default public and 2. is private subnet: PrivateSubnet1
# We have created a Route Table RouteTable1 for the PrivateSubnet1
# We create two instances one in public subnet called bastion and another instance in the private subnet
# objective here is to connect from putty --> bastion --> ec2 in private subnet
# To achive this we do the following

# Step-1: install Pageant.exe 
This is required for agent forwarding from the putty
url: https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html
Launch D:\PK\inst\Pageant.exe UI, click "Add Key" and navigate to London-KP.ppk file D:\PK\cloud\AWS\keys\London-KP.ppk 

# Step-2: config agent forwarding
In putty.exe, click on ssh -> Auth -> Enable the checkbox: "Allow Agent forwarding"

# Step-3: ssh to the private host 
> ssh ec2-user@[IP_ADDR_PVT_SUBNET]

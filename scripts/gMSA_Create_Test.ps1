# Run on Domain Controller to create the gMSA #
# Make sure the group is already created #
New-ADServiceAccount accountname -DNSHostName groupNamefortheAccount –PrincipalsAllowedToDelegateToAccount "CN=accountname,CN=folder,DC=parentfolder"

# Add the machines to the group for authenticating #
# Restart the machines #
# Test the authentication #
Test-ADServiceAccount accountname

# True -> Success #


### `adduser`

1. Adds a new user.
2. Adds a new default group with the same name as the user.
3. Chooses UID (user ID) and GID (group ID) conforming to the Debian policy.
4. Creates a home directory with skeletal conguration (template) from `/etc/skel`.
5. Creates a password for the new user.
6. Runs the user script, if any.

```sh
sudo adduser bob
# type password and other infos
cat /etc/passwd # to confirm

# All access rights and permissions assigned to the group will be automatically available to all the members of the group.
sudo adduser john guest         # add user john to guest group

sudo adduser --disabled-password --gecos "" username
sudo useradd -s <SHELL> -m -d <HomeDir> -g <Group> UserName

# then set or change user's passwd
sudo passwd bob
sudo passwd # changing the root's password!!!
```

### Groups

```sh
sudo addgroup guest           # add a normal group
sudo addgroup --system sysg   # add a system group
sudo adduser guest guestg    # add user guest to group guestg 


sudo usermod -g <group> <username>                      # modify the group assigned to the user
sudo usermod -a -G <group1>,<group2>,<group3> <username> # add user to multiple groups




#### delete user
# Delete the user account named john and also remove the home and mail spool directories associated with john. By default, the deluser command will delete the user without deleting the home directory.
sudo deluser --remove-home john

# create a backup  le with the name john.tar.gz
deluser --backup --remove-home john


deluser john guest        # this will remove user john from group guest
deluser --group guest     # this will remove a group


## disable user account
sudo usermod --expiredate 1 john # disable the user account john
sudo usermod --expiredate "" john # re-enable user account john
sudo usermod -e YYYY-MM-DD john # specify expiry date


## file permissions
su john                     # login as john
chgrp -R editor documents   # change the group of documents as `editor`

```

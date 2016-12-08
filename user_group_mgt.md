

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


sudo adduser --disabled-password --gecos "" username
sudo useradd -s <SHELL> -m -d <HomeDir> -g <Group> UserName

# then set or change user's passwd
sudo passwd bob
sudo passwd # changing the root's password!!!


```

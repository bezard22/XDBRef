<!-- install/mysql.sh -->

# mysql install

## step 1 install

```
sudo pat update
sudo apt install mysql-server
sudo systemctl start mysql.service
```

---

## step 2 fix root password

Need to set root password befre running mysql_secure_installation

```
sudo mysql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
exit
```

---

## step 3 secure installation

```
sudo mysql_secure_installation
```

---

## step 4 setup user
```
mysql -u root -p
CREATE USER 'username'@'localhost' IDENTIFIED BY 'password';
```

## step 4 grant priviledges
```
GRANT CREATE, ALTER, INSERT, UPDATE, DELETE, REFERENCES ON '*' TO 'USER'@'localhost';
```
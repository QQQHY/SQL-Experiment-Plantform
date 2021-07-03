# Setup

## Front

### Project setup

> npm install

### Compiles and hot-reloads for development

> npm run serve

### Compiles and minifies for production

> npm run build

### Run your tests

> npm run test

### Lints and fixes files

> npm run lint

### Customize configuration

See [Configuration Reference](https://cli.vuejs.org/config/).

## Server

### Environment configuration

> pip install requirements.txt

### Project Running

> python app.py

## MySQL

### 需先自行安装MYSQL

### 如果使用已配置好的并添加部分题目的系统

> CREATE DATABASE sql_online_judge;
>
> USE sql_online_judge;
>
> 使用source执行Sql-Online-Judge-Server/sql/test.sql

### 如果想创建一个新的环境

> 使用source执行Sql-Online-Judge-Server/sql/create_sql.sql
>
> 使用source执行Sql-Online-Judge-Server/sql/insert.sql

### 更改Sql-Online-Judge-Server/app.py中链接使用的密码

> app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:root的密码@localhost/sql_online_judge'  # 自己电脑上mysql环境的root和密码

### 管理员用户名：Admin，密码：123456

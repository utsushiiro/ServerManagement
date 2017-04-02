## MySQL

MySQLのリポジトリは以下のサイトにある Red Hat Enterprise Linux 7 対応の version9 (mysql57-community-release-el7-9.noarch.rpm)を利用.
yumで使用する際のURLは http://dev.mysql.com/get/rpmファイル名 となる.

Download MySQL Yum Repository (https://dev.mysql.com/downloads/repo/yum/)

インストールするMySQLの大まかなversion指定は"Install & update mysql"でのenablerepoを変更する.
デフォルトでは5.6を使用.

<b>現状 mysql_secure_installation の処理はtaskとして記述していないのでサーバで直接実行する必要あり.</b>

### Reference
- yum, rpmインストールにおけるMySQL 5.6とMySQL 5.7の違い <br> http://gihyo.jp/dev/serial/01/mysql-road-construction-news/0010
- yum｜yum リポジトリの有効／無効 <br> http://kazmax.zpp.jp/linux_beginner/yum_repository_enable_disable.html
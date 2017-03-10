# Ansible playbooks for the server setting

## USAGE

### プレイブックの実行コマンド

#### パスワード認証使用
```
ansible-playbook playbooks/プレイブック名 -i inventory/インベントリ名 -u ユーザ名 --ask-pass --ask-become-pass --ask-vault-pass
```

#### RSA公開鍵認証使用

```
ansible-playbook playbooks/プレイブック名 -i inventory/インベントリ名 -u ユーザ名 --private-key=使用ユーザの秘密鍵へのパス --ask-become-pass --ask-vault-pass
```

### roleのテンプレート作成コマンド

以下のコマンドをisl_ansible直下で使用

```
./bin/role.sh ロール名
```

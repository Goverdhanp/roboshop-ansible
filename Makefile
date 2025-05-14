default:
	git pull
	ansible-playbook -i "$(component_name)-{{ env }}.gvndevops12.tech," -e ansible_user=ec2-user -e ansible_password=DevOps321  -e "component_name=$(component_name)" roboshop.yml -e env=$(env) 


all:
	ansible-playbook -i "frontend-$(ENV).gvndevops12.tech," -e ansible_user=ec2-user -e ansible_password=DevOps321 -e "component_name=frontend" roboshop.yml -e env=$(ENV)
	ansible-playbook -i "redis-$(ENV).gvndevops12.tech," -e ansible_user=ec2-user -e ansible_password=DevOps321 -e "component_name=redis" roboshop.yml -e env=$(ENV)
	ansible-playbook -i "mysql-$(ENV).gvndevops12.tech," -e ansible_user=ec2-user -e ansible_password=DevOps321 -e "component_name=mysql" roboshop.yml -e env=$(ENV)
	ansible-playbook -i "user-$(ENV).gvndevops12.tech," -e ansible_user=ec2-user -e ansible_password=DevOps321 -e "component_name=user" roboshop.yml -e env=$(ENV)
	ansible-playbook -i "mogo-$(ENV).gvndevops12.tech," -e ansible_user=ec2-user -e ansible_password=DevOps321 -e "component_name=mogo" roboshop.yml -e env=$(ENV)
	ansible-playbook -i "rabbitmq-$(ENV).gvndevops12.tech," -e ansible_user=ec2-user -e ansible_password=DevOps321 -e "component_name=rabbitmq" roboshop.yml -e env=$(ENV)
	ansible-playbook -i "shipping-$(ENV).gvndevops12.tech," -e ansible_user=ec2-user -e ansible_password=DevOps321 -e "component_name=shipping" roboshop.yml -e env=$(ENV)
	ansible-playbook -i "payment-$(ENV).gvndevops12.tech," -e ansible_user=ec2-user -e ansible_password=DevOps321 -e "component_name=payment" roboshop.yml -e env=$(ENV)
	ansible-playbook -i "cart-$(ENV).gvndevops12.tech," -e ansible_user=ec2-user -e ansible_password=DevOps321 -e "component_name=cart" roboshop.yml -e env=$(ENV)
	ansible-playbook -i "catalogue-$(ENV).gvndevops12.tech," -e ansible_user=ec2-user -e ansible_password=DevOps321 -e "component_name=catalogue" roboshop.yml -e env=$(ENV)
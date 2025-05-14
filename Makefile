default:
	git pull
	ansible-playbook -i "$(component_name)-{{ env }}.gvndevops12.tech," -e ansible_user=ec2-user -e ansible_password=DevOps321  -e "component_name=$(component_name)" roboshop.yml -e env=$(env) 

all:
	
	
	ansible-playbook -i "frontend-dev.gvndevops12.tech," -e ansible_user=ec2-user -e ansible_password=DevOps321  -e "component_name=frontend" roboshop.yml -e env=$(env) 
    ansible-playbook -i "redis-dev.gvndevops12.tech," -e ansible_user=ec2-user -e ansible_password=DevOps321  -e "component_name=redis" roboshop.yml -e env=$(env) 
    ansible-playbook -i "mysql-dev.gvndevops12.tech," -e ansible_user=ec2-user -e ansible_password=DevOps321  -e "component_name=mysql" roboshop.yml -e env=$(env) 
    ansible-playbook -i "user-dev.gvndevops12.tech," -e ansible_user=ec2-user -e ansible_password=DevOps321  -e "component_name=user" roboshop.yml -e env=$(env) 
    ansible-playbook -i "mogo-dev.gvndevops12.tech," -e ansible_user=ec2-user -e ansible_password=DevOps321  -e "component_name=mogo" roboshop.yml -e env=$(env) 
    ansible-playbook -i "rabbitmq-dev.gvndevops12.tech," -e ansible_user=ec2-user -e ansible_password=DevOps321  -e "component_name=rabbitmq" roboshop.yml -e env=$(env) 
    ansible-playbook -i "shipping-dev.gvndevops12.tech," -e ansible_user=ec2-user -e ansible_password=DevOps321  -e "component_name=shipping" roboshop.yml -e env=$(env) 
    ansible-playbook -i "payment-dev.gvndevops12.tech," -e ansible_user=ec2-user -e ansible_password=DevOps321  -e "component_name=payment" roboshop.yml -e env=$(env) 
    ansible-playbook -i "cart-dev.gvndevops12.tech," -e ansible_user=ec2-user -e ansible_password=DevOps321  -e "component_name=cart" roboshop.yml -e env=$(env) 
    ansible-playbook -i "catalogue-dev.gvndevops12.tech," -e ansible_user=ec2-user -e ansible_password=DevOps321  -e "component_name=catalogue" roboshop.yml -e env=$(env) 



default:
	git pull
	ansible-playbook -i "$(component_name)-dev.gvndevops12.tech," -e ansible_user=ec2-user -e ansible_password=DevOps321  -e "component_name=$(component_name)" roboshop.yml  

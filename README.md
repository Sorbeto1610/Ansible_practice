# ansible-practice


Before running, add your EC2 IPs in the hosts files of production or staging.

To run the ansible playbook with production inventory:
````shell script
ansible-playbook --private-key=<PATH_TO_YOUR_PRIV_KEY> -i inventories/production main.yml
````
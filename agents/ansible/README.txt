To initialize any new jenkins agent do the following steps
- Add new server name under the agents tag in hosts file
- Run command ansible-playbook -i ./hosts init_agents.yml
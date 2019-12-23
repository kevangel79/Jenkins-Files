To initialize any new jenkins agent do the following steps
- Add new server name under the agents tag in hosts file
- Run command ansible-playbook -i agents/ansible/hosts agents/ansible/init_agents.yml -u root
- From jenkins master run for each slave ssh-copy-id jenkins@<agentIP>
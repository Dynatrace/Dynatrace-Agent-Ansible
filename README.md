# Dynatrace-Agents-Ansible

An [Ansible](ansible.com) role for automated deployments of the [Dynatrace](bit.ly/dttrial) Agents package. 

**Note**: This role merely installs the agent package, it will not inject an agent into your application.

**Note**: Currently, we support only Linux hosts, support for installing Windows hosts is in the making.

## Download

The role is available via:

- [Ansible Galaxy](https://galaxy.ansible.com/list#/roles/2620)
- [GitHub](https://github.com/Dynatrace/Dynatrace-Agents-Ansible)

## Requirements

Download the Dynatrace Agents package from [downloads.compuwareapm.com](downloads.compuwareapm.com) and place the artifact as ```dynatrace-agent.jar``` in the role's ```files``` directory from where it will be picked up during the automated installation.

## Role Variables

As defined in ```defaults/main.yml```:

| Name                                         | Default              | Description |
|----------------------------------------------|----------------------|-------------|
| *dynatrace_agents_linux_install_dir*         | /opt                 | The Dynatrace Agents package will be installed into the directory *$dynatrace_agents_linux_install_dir*/dynatrace-*$major*-*$minor*-*$rev*, where *$major*, *$minor* and *$rev* are given by the installer. A symbolic link to the actual installation directory will be created in *$dynatrace_agents_linux_install_dir*/dynatrace. |
| *dynatrace_agents_linux_installer_file_name* | dynatrace-agents.jar | The file name of the Dynatrace Agents installer in the role's ```files``` directory. |
| *dynatrace_agents_role_name*                 | Dynatrace-Agents     | The actual name of this role in an [Ansible Playbook's](http://docs.ansible.com/playbooks.html) ```roles``` directory. |

## Example Playbook

	- hosts: all
	  roles:
	    - { role: Dynatrace-Agents }

## Additional Resources

- [Slide Deck: Automated Deployments](slideshare.net/MartinEtmajer/automated-deployments-slide-share)
- [Slide Deck: Introduction to Automated Deployments with Ansible](http://www.slideshare.net/MartinEtmajer/introduction-to-automated-deployments-with-ansible)

## Questions?

Feel free to post your questions on the Dynatrace Community's [Continuous Delivery Forum](https://community.dynatrace.com/community/pages/viewpage.action?pageId=46628921).

## License

Licensed under the MIT License. See the LICENSE file for details.

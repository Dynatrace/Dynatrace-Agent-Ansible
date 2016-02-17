# Dynatrace-Agent-Ansible

This Ansible role installs and configures the Agent of the [Dynatrace Application Monitoring](http://www.dynatrace.com/en/products/application-monitoring.html) solution.

**Note**: this role merely makes the Dynatrace Agent available, but it does not configure your application to actually load any. See the [Dynatrace-Java-Agent-Ansible](https://github.com/dynatrace/Dynatrace-Java-Agent-Ansible) role for an example that does.

## Download

The role is available via:

- [Ansible Galaxy](https://galaxy.ansible.com/Dynatrace/Dynatrace-Agent)
- [GitHub](https://github.com/Dynatrace/Dynatrace-Agent-Ansible)

## Description

This role downloads and installs the most recent version of the Dynatrace Agent package from [http://downloads.dynatracesaas.com](http://downloads.dynatracesaas.com). The default download link can be overridden via the `dynatrace_agent_linux_installer_file_url` attribute. Alternatively, you can place the installer artifact as `dynatrace-agent.jar` in the role's `files` directory from where it will be picked up during the installation. Please refer to `defaults/main.yml` for a list of supported attributes.

## Role Variables

As defined in ```defaults/main.yml```:

| Name                                        | Default                                                         | Description |
|---------------------------------------------|-----------------------------------------------------------------|-------------|
| *dynatrace_agent_linux_install_dir*         | /opt                                                            | The Dynatrace Agent will be installed into the directory *$dynatrace_agent_linux_install_dir*/dynatrace-*$major*-*$minor*-*$rev*, where *$major*, *$minor* and *$rev* are given by the installer. A symbolic link to the actual installation directory will be created in *$dynatrace_agent_linux_install_dir*/dynatrace. |
| *dynatrace_agent_linux_installer_file_name* | dynatrace-agent.jar                                             | The file name of the Dynatrace Agent installer in the role's ```files``` directory. |
| *dynatrace_agent_linux_installer_file_url*  | http://downloads.dynatracesaas.com/6.2/dynatrace-agent-unix.jar | A HTTP, HTTPS or FTP URL to the Dynatrace Agent installer in the form (http\|https\|ftp)://[user[:pass]]@host.domain[:port]/path. |
| *dynatrace_agent_role_name*                 | Dynatrace.Dynatrace-Agent                                       | The actual name of this role in an [Ansible Playbook's](http://docs.ansible.com/playbooks.html) ```roles``` directory. |

## Example Playbook

```
- hosts: all
  roles:
    - role: Dynatrace.Dynatrace-Agent
```

## Testing

We use [Test Kitchen](http://kitchen.ci) to automatically test our automated deployments with [Serverspec](http://serverspec.org) and [RSpec](http://rspec.info/):

1) Install Test Kitchen and its dependencies from within the project's directory:

```
gem install bundler
bundle install
```

2) Run all tests

```
kitchen test
```

By default, we run our tests inside [Docker](https://www.docker.com/) containers as this considerably speeds up testing time (see `.kitchen.yml`).

## Additional Resources

### Blogs

- [How to Automate Enterprise Application Monitoring with Ansible](http://apmblog.dynatrace.com/2015/03/04/how-to-automate-enterprise-application-monitoring-with-ansible/)
- [How to Automate Enterprise Application Monitoring with Ansible - Part II](http://apmblog.dynatrace.com/2015/04/23/how-to-automate-enterprise-application-monitoring-with-ansible-part-ii/)

### Presentations

- [Automated Deployments (of Dynatrace) with Ansible](http://www.slideshare.net/MartinEtmajer/automated-deployments-with-ansible)
- [Test-Driven Infrastructure with Ansible, Test Kitchen, Serverspec and RSpec](http://www.slideshare.net/MartinEtmajer/testing-ansible-roles-with-test-kitchen-serverspec-and-rspec-48185017)

### Tutorials

- [Automated Deployments (of Dynatrace) with Ansible](https://community.compuwareapm.com/community/display/LEARN/Tutorials+on+Automated+Deployments#TutorialsonAutomatedDeployments-ansible)

## Questions?

Feel free to post your questions on the Dynatrace Community's [Continuous Delivery Forum](https://answers.dynatrace.com/spaces/148/open-q-a_2.html?topics=continuous%20delivery).

## License

Licensed under the MIT License. See the LICENSE file for details.
[![analytics](https://www.google-analytics.com/collect?v=1&t=pageview&_s=1&dl=https%3A%2F%2Fgithub.com%2FdynaTrace&dp=%2FDynatrace-Agent-Ansible&dt=Dynatrace-Agent-Ansible&_u=Dynatrace~&cid=github.com%2FdynaTrace&tid=UA-54510554-5&aip=1)]()

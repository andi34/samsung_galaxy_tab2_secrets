# Gerrit on Debian 8

Install some requirements:
```sh
apt-get install git
apt-get install openjdk-7-jre
```

if you want to create virtual hosts
```sh
apt-get install apache2
```

We want to use gerrit with Github OAUTH, create folder structure
```sh
mkdir -p gerrit_page/bin
mkdir -p gerrit_page/lib
mkdir -p gerrit_page/plugins
```

Download gerrit and github oauth plugin
```sh
cd gerrit_page/bin
wget  https://www.gerritcodereview.com/download/gerrit-2.13.6.war
mv gerrit-2.13.6.war gerrit.war
cd ../lib
wget https://gerrit-ci.gerritforge.com/job/plugin-github-mvn-stable-2.13/lastSuccessfulBuild/artifact/github-oauth/target/github-oauth-2.13.jar
cd ../plugins
wget https://gerrit-ci.gerritforge.com/job/plugin-github-mvn-stable-2.13/lastSuccessfulBuild/artifact/github-plugin/target/github-plugin-2.13.jar
cd ..
```

Now append to the end of your .bashrc (replace "USERNAME" with your gerrit user):
```sh
export GERRIT_SITE=/home/USERNAME/gerrit_page
```

Save it. In nano that would be Ctrl-O and then Enter. Then Ctrl-X to exit back to a prompt. Restart the shell:
```sh
source ~/.bashrc
```

Ready to install!
```sh
java -jar bin/gerrit.war init
```

Leave everything default, besides:
```sh
*** Gerrit Code Review 2.13.1
*** 


*** Git Repositories
*** 

Location of Git repositories   [git]: 

*** SQL Database
*** 

Database server type           [h2]: 

*** User Authentication
*** 

Authentication method          [OPENID/?]: HTTP
```
Change from OPENID to HTTP

```sh
Get username from custom HTTP header [y/N]?
SSO logout URL                 : 
Enable signed push support     [y/N]? 

*** Review Labels
*** 

Install Verified label         [y/N]? y

*** Email Delivery
*** 

SMTP server hostname           [localhost]: 
SMTP server port               [(default)]: 
SMTP encryption                [NONE/?]: 
SMTP username                  : 

*** Container Process
*** 

Run as                         [gerrit]: 
Java runtime                   [/usr/lib/jvm/java-7-openjdk-amd64/jre]: 
Upgrade ./bin/gerrit.war       [Y/n]? 
Copying gerrit.war to ./bin/gerrit.war

*** SSH Daemon
*** 

Listen on address              [*]: 
Listen on port                 [29418]: 

Gerrit Code Review is not shipped with Bouncy Castle Crypto SSL v152
  If available, Gerrit can take advantage of features
  in the library, but will also function without it.
Download and install it now [Y/n]? y
Downloading https://repo1.maven.org/maven2/org/bouncycastle/bcpkix-jdk15on/1.52/bcpkix-jdk15on-1.52.jar ... OK
Checksum bcpkix-jdk15on-1.52.jar OK

Gerrit Code Review is not shipped with Bouncy Castle Crypto Provider v152
** This library is required by Bouncy Castle Crypto SSL v152. **
Download and install it now [Y/n]? y
Downloading https://repo1.maven.org/maven2/org/bouncycastle/bcprov-jdk15on/1.52/bcprov-jdk15on-1.52.jar ... OK
Checksum bcprov-jdk15on-1.52.jar OK
Generating SSH host key ... rsa... dsa... done

*** HTTP Daemon
*** 

Behind reverse proxy           [y/N]? n
Use SSL (https://)             [y/N]? n
Listen on address              [*]: 
Listen on port                 [8080]: 
Canonical URL                  [http://gerrit:8080/]: http://192.168.0.137:8080/
```
Add your IP-Adress instead your hostname on Canonical URL.

Install all plugins
```sh
*** Plugins
*** 

Installing plugins.
Install plugin commit-message-length-validator version v2.13.1 [y/N]? y
Installed commit-message-length-validator v2.13.1
Install plugin download-commands version v2.13.1 [y/N]? y
Installed download-commands v2.13.1
Install plugin hooks version v2.13.1 [y/N]? y
Installed hooks v2.13.1
Install plugin replication version v2.13.1 [y/N]? y
Installed replication v2.13.1
Install plugin reviewnotes version v2.13.1 [y/N]? y
Installed reviewnotes v2.13.1
Install plugin singleusergroup version v2.13.1 [y/N]? y
Installed singleusergroup v2.13.1
Initializing plugins.

*** GitHub Integration
*** 

GitHub URL                     [https://github.com]: 
GitHub API URL                 [https://api.github.com]: 

NOTE: You might need to configure a proxy using http.proxy if you run Gerrit behind a firewall.

*** GitHub OAuth registration and credentials
*** 

Register Gerrit as GitHub application on:
https://github.com/settings/applications/new

Settings (assumed Gerrit URL: http://192.168.0.137:8080/)
* Application name: Gerrit Code Review
* Homepage URL: http://192.168.0.137:8080/
* Authorization callback URL: http://192.168.0.137:8080/oauth
```
Visit your github settings page,
-> Developer settings -> OAuth applications -> register a new application

```sh
After registration is complete, enter the generated OAuth credentials:
GitHub Client ID               : XXXXXXX
GitHub Client Secret           : XXXXXXX
              confirm password : (Enter Client Secret again)
Gerrit OAuth implementation    [HTTP/?]: 
HTTP Authentication Header     [GITHUB_USER]: 

Initialized /home/gerrit/gerrit_page
```

Now let's start gerrit :)
```sh
bin/gerrit.sh start
Starting Gerrit Code Review: OK
```

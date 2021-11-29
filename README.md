# mentorembeddeddevops

Repository for the source additional files and other stuff

## Tasks

1. Download and run these docker images:
	- [`mentorembeddeddevops/mysql-test:1.0`](https://hub.docker.com/r/mentorembeddeddevops/mysql-test) to act as the database for the rest of the tasks
	- `mentorembeddeddevops/tool-inventory-test:1.0` (TODO: upload it) which hosts a simple http server for the rest of the tasks
2. Write a python script that does the following:
	- Queries the mysql database for employees working in the `Production` deparment, earning more than `100` (see [db schema](https://hub.docker.com/r/mentorembeddeddevops/mysql-test))
	- Some of these employees are users of the site hosted by the container 'tool-inventory-test', with various access levels. Use the site's REST API to get the username of those among them who have `WRITE` access. (note: some of them might not be users at all here)
	- Write the results of the queries in a CSV file which has two columns:
		- `Name` (All returned by the mysql query)
		- `Username` (`N/A` if not a user of the site or doesn't have `WRITE` access)-
	- See example output here (TODO: link to github) (note: csv dialect is not important now, feel free to leave it on defaults)
3. Create a Dockerfile based on image [`python:3.10.0-bullseye`](https://hub.docker.com/_/python) that runs the script you wrote.
4. Write a shell script that:
	- Creates the docker network,
	- builds your docker image based on the Dockerfile created previously,
	- runs all three containers, connecting them to the same network,
	- stops the mysql-test and the tool-inventory-test containers once the python container finished running,
	- deletes all containers (if not deleted automatically)
5. Upload your work to a github repository
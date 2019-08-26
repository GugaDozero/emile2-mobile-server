#!/bin/bash

heroku pg:reset --app emilegestaoacademica --confirm emilegestaoacademica
PGUSER=ofyrmwdeeapuav PGPASSWORD=5ad29bd45328edc4ed3b5d1df6e133780b951088e813cfe8141cee03fcfcf5ab
 heroku pg:push postgresql-regular-33367  postgres://ofyrmwdeeapuav:5ad29bd45328edc4ed3b5d1df6e133780b951088e813cfe8141cee03fcfcf5ab@ec2-107-20-177-161.compute-1.amazonaws.com:5432/d4elvs9kgq0d37
 --app emilegestaoacademica

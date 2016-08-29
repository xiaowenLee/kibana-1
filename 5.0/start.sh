#!/bin/bash

service kibana start && tail -F /var/log/kibana/kibana.stdout

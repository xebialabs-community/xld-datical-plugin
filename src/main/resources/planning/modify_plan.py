#
# Copyright 2019 XEBIALABS
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

import re

def modifyPlan( context ):

	regex = r"(\d*)$"
	versionDeployed = re.search(regex, deployedApplication.version.name).group(0)
	versionPreviousDeployed = re.search(regex, previousDeployedApplication.version.name).group(0)
#	isRollback = int(versionDeployed) < int(versionPreviousDeployed)

	if delta.operation == "MODIFY":

		context.addStep(steps.os_script(
			description = "Upload project for datical [%s from %s to %s]" % (deployed.name, versionPreviousDeployed, versionDeployed),
			order = 60,
			script = "datical/datical_upload",
			classpath_resources=["7zip/7z1604-x64.exe"]
		))

		context.addStep(steps.os_script(
			description = "Remove project [%s] from server" % deployed.name,
			order = 64,
			script = "datical/datical_remove"
		))

		# Detect new version or older version
		# Perform rollback if deploying older version
		# if isRollback :

			# context.addStep(steps.os_script(
				# description = "Rollback [%s to %s]" % (previousDeployed.name, versionDeployed),
				# order = 63,
				# script = "datical/datical_undeploy",
				# freemarker_context={'deployed': previousDeployed}
			# ))

		# End if versionDeployed > versionPreviousDeployed
		# else :

			# context.addStep(steps.os_script(
				# description = "Deploy [%s version %s]" % (deployed.name, versionDeployed),
				# order = 63,
				# script = "datical/datical_deploy"
			# ))
			
		# End else
		
		# Comment this section 
		context.addStep(steps.os_script(
			description = "Deploy [%s version %s]" % (deployed.name, versionDeployed),
			order = 63,
			script = "datical/datical_deploy"
		))
		
		# Optional "Status" and "Forecast" steps:
		if deployed.runStatus :
			context.addStep(steps.os_script(
				description = "Status for datical project [%s]" % deployed.name,
				order = 61,
				script = "datical/datical_status"
			))
		# End deployed.runStatus

#		if (deployed.runForecast and not isRollback):
		if (deployed.runForecast):
			context.addStep(steps.os_script(
				description = "Forecast for datical project [%s]" % deployed.name,
				order = 62,
				script = "datical/datical_forecast"
			))
		# End deployed.runForecast

	# End if delta.operation == "MODIFY"

# End def modifyPlan

modifyPlan( context )

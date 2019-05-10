#
# Copyright 2019 XEBIALABS
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

def destroyPlan( context ):

	if delta.operation == "DESTROY":
		context.addStep(steps.os_script(
			description = "Upload project for datical [%s]" % (previousDeployed.name),
			order = 40,
			script = "datical/datical_upload",
			freemarker_context = {'deployed': previousDeployed}
		))

		context.addStep(steps.os_script(
			description = "Undeploy datical [%s]" % previousDeployed.name,
			order = 43,
			script = "datical/datical_undeploy",
			freemarker_context={'deployed': previousDeployed}
		))

		context.addStep(steps.os_script(
			description = "Remove project [%s] from server" % previousDeployed.name,
			order = 44,
			script = "datical/datical_remove",
			freemarker_context={'deployed': previousDeployed}
		))

		# Optional "Status" steps:
		if previousDeployed.runStatus :
			context.addStep(steps.os_script(
				description = "Status for datical project [%s]" % previousDeployed.name,
				order = 41,
				script = "datical/datical_status",
				freemarker_context={'deployed': previousDeployed}
			))
		# End previousDeployed.runStatus

	# End if delta.operation == "DESTROY"

# End def destroyPlan

destroyPlan( context )

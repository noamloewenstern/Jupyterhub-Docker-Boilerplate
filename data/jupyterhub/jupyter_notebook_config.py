# Can be used to set configuration for notebook inside the singleuser-notebook server.

# shutdown the server after no activity for an 2 hours
c.NotebookApp.shutdown_no_activity_timeout = 120 * 60
# shutdown kernels after no activity for 60 minutes
c.MappingKernelManager.cull_idle_timeout = 60 * 60
# # check for idle kernels every 5 minutes
c.MappingKernelManager.cull_interval = 5 * 60

resource "polaris_custom_role" "azure_subscriptions_admin_role" {
  name        = "Azure Admin Role - ${var.role_name_suffix}"
  description = "Admin role for a set of Azure subscriptions."

  permission {
    operation = "ADD_AZURE_CLOUD_ACCOUNT"
    hierarchy {
      object_ids     = ["GlobalResource"]
      snappable_type = "AllSubHierarchyType"
    }
  }

  permission {
    operation = "DELETE_AZURE_CLOUD_ACCOUNT"
    hierarchy {
      object_ids     = ["GlobalResource"]
      snappable_type = "AllSubHierarchyType"
    }
  }

  permission {
    operation = "EDIT_AZURE_CLOUD_ACCOUNT"
    hierarchy {
      object_ids     = ["GlobalResource"]
      snappable_type = "AllSubHierarchyType"
    }
  }

  permission {
    operation = "VIEW_AZURE_CLOUD_ACCOUNT"
    hierarchy {
      object_ids     = ["GlobalResource"]
      snappable_type = "AllSubHierarchyType"
    }
  }

  permission {
    operation = "PROVISION_ON_INFRASTRUCTURE"
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureNativeVirtualMachine"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureNativeManagedDisk"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureSqlDatabaseDb"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureSqlManagedInstanceDb"
    }
  }

  permission {
    operation = "VIEW_INVENTORY"
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureNativeVirtualMachine"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureNativeManagedDisk"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureSqlDatabaseDb"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureSqlManagedInstanceDb"
    }
  }

  permission {
    operation = "REFRESH_DATA_SOURCE"
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureNativeVirtualMachine"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureNativeManagedDisk"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureSqlDatabaseDb"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureSqlManagedInstanceDb"
    }
  }

  permission {
    operation = "MANAGE_PROTECTION"
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureNativeVirtualMachine"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureNativeManagedDisk"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureSqlDatabaseDb"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureSqlManagedInstanceDb"
    }
  }

  permission {
    operation = "TAKE_ON_DEMAND_SNAPSHOT"
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureNativeVirtualMachine"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureNativeManagedDisk"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureSqlDatabaseDb"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureSqlManagedInstanceDb"
    }
  }

  permission {
    operation = "DELETE_SNAPSHOT"
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureNativeVirtualMachine"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureNativeManagedDisk"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureSqlDatabaseDb"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureSqlManagedInstanceDb"
    }
  }

  permission {
    operation = "MOUNT"
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureNativeVirtualMachine"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureNativeManagedDisk"
    }
  }

  permission {
    operation = "EXPORT_SNAPSHOTS"
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureNativeVirtualMachine"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureNativeManagedDisk"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureSqlDatabaseDb"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureSqlManagedInstanceDb"
    }
  }

  permission {
    operation = "DOWNLOAD"
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureNativeVirtualMachine"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureNativeManagedDisk"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureSqlDatabaseDb"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureSqlManagedInstanceDb"
    }
  }

  permission {
    operation = "RESTORE_TO_ORIGIN"
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureNativeVirtualMachine"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureNativeManagedDisk"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureSqlDatabaseDb"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureSqlManagedInstanceDb"
    }
  }

  permission {
    operation = "DOWNLOAD_SNAPSHOT_FROM_REPLICATION_TARGET"
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureNativeVirtualMachine"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureNativeManagedDisk"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureSqlDatabaseDb"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureSqlManagedInstanceDb"
    }
  }

  permission {
    operation = "MANAGE_DATA_SOURCE"
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureNativeVirtualMachine"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureNativeManagedDisk"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureSqlDatabaseDb"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AzureSqlManagedInstanceDb"
    }
  }

  permission {
    operation = "VIEW_SLA"
    hierarchy {
      object_ids     = ["SLA_ROOT"]
      snappable_type = "AllSubHierarchyType"
    }
  }

  permission {
    operation = "VIEW_ARCHIVAL_LOCATION"
    hierarchy {
      object_ids     = ["ARCHIVAL_ROOT"]
      snappable_type = "AllSubHierarchyType"
    }
  }
}

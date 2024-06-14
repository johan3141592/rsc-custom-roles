resource "polaris_custom_role" "aws_accounts_admin_role" {
  name        = "AWS Admin Role - ${var.role_name_suffix}"
  description = "Admin role for a set of AWS accounts."

  permission {
    operation = "EDIT_AWS_CLOUD_ACCOUNT"
    hierarchy {
      object_ids     = ["GlobalResource"]
      snappable_type = "AllSubHierarchyType"
    }
  }

  permission {
    operation = "VIEW_AWS_CLOUD_ACCOUNT"
    hierarchy {
      object_ids     = ["GlobalResource"]
      snappable_type = "AllSubHierarchyType"
    }
  }

  permission {
    operation = "PROVISION_ON_INFRASTRUCTURE"
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeEc2Instance"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeEbsVolume"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeRdsInstance"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AWS_NATIVE_S3_BUCKET"
    }
  }

  permission{
    operation = "VIEW_INVENTORY"
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeEc2Instance"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeEbsVolume"
    }
    hierarchy{
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeRdsInstance"
    }
    hierarchy{
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AWS_NATIVE_S3_BUCKET"
    }
  }

  permission{
    operation = "REFRESH_DATA_SOURCE"
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeEc2Instance"
    }
    hierarchy{
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeEbsVolume"
    }
    hierarchy{
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeRdsInstance"
    }
    hierarchy{
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AWS_NATIVE_S3_BUCKET"
    }
  }

  permission{
    operation = "MANAGE_PROTECTION"
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeEc2Instance"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeEbsVolume"
    }
    hierarchy{
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeRdsInstance"
    }
    hierarchy{
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AWS_NATIVE_S3_BUCKET"
    }
  }

  permission{
    operation = "TAKE_ON_DEMAND_SNAPSHOT"
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeEc2Instance"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeEbsVolume"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeRdsInstance"
    }
    hierarchy{
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AWS_NATIVE_S3_BUCKET"
    }
  }

  permission{
    operation = "DELETE_SNAPSHOT"
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeEc2Instance"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeEbsVolume"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeRdsInstance"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AWS_NATIVE_S3_BUCKET"
    }
  }

  permission{
    operation = "EXPORT_SNAPSHOTS"
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeEc2Instance"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeEbsVolume"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeRdsInstance"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AWS_NATIVE_S3_BUCKET"
    }
  }

  permission {
    operation = "DOWNLOAD"
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeEc2Instance"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeEbsVolume"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeRdsInstance"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AWS_NATIVE_S3_BUCKET"
    }
  }

  permission {
    operation = "RESTORE_TO_ORIGIN"
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeEc2Instance"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeEbsVolume"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeRdsInstance"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AWS_NATIVE_S3_BUCKET"
    }
  }

  permission {
    operation = "DOWNLOAD_SNAPSHOT_FROM_REPLICATION_TARGET"
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeEc2Instance"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeEbsVolume"
    }
    hierarchy{
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeRdsInstance"
    }
    hierarchy{
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AWS_NATIVE_S3_BUCKET"
    }
  }

  permission {
    operation = "MANAGE_DATA_SOURCE"
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeEc2Instance"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeEbsVolume"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AwsNativeRdsInstance"
    }
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AWS_NATIVE_S3_BUCKET"
    }
  }

  permission {
    operation = "DOWNLOAD_FROM_ARCHIVAL_LOCATION"
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AWS_NATIVE_S3_BUCKET"
    }
  }

  permission {
    operation = "MOUNT"
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AWS_NATIVE_S3_BUCKET"
      }
  }

  permission {
    operation = "EXPORT_FILES"
    hierarchy {
      object_ids     = var.rsc_cloud_account_ids
      snappable_type = "AWS_NATIVE_S3_BUCKET"
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

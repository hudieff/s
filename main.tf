provider "oci" {}

resource "oci_core_instance" "generated_oci_core_instance" {
	agent_config {
		is_management_disabled = "false"
		is_monitoring_disabled = "false"
		plugins_config {
			desired_state = "DISABLED"
			name = "Vulnerability Scanning"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Monitoring"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Bastion"
		}
	}
	availability_config {
		recovery_action = "RESTORE_INSTANCE"
	}
	availability_domain = "pGjD:AP-TOKYO-1-AD-1"
	compartment_id = "ocid1.tenancy.oc1..aaaaaaaa2mfxqm3m22q7su5kl6b7ntcqqiqpzd2gn2srijxzl3eotkcliaeq"
	create_vnic_details {
		assign_private_dns_record = "true"
		assign_public_ip = "true"
		subnet_id = "ocid1.subnet.oc1.ap-tokyo-1.aaaaaaaa3pahchwskofspvhqh46srq6zfq7eq727jfvwdipvhmoc4ohixuxq"
	}
	display_name = "instance-20220922-1806"
	instance_options {
		are_legacy_imds_endpoints_disabled = "false"
	}
	is_pv_encryption_in_transit_enabled = "true"
	metadata = {
		"ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCpuW+Mcp3I3k41vFPxxOoyesL8EfEsewN/NqnJnA/NhHgrnkFYb+4Cb4tRvpJMfM0J+fds58y6gN8IS9l4aiFBjSmUGJwu/B4nWET97JgHxGGKaznS8mYaRHzdz5onoKiGBdrAAXpYZ8CwtnMJQrIh7ddZUXb1gp0TJ8yHKkLa5oGsdXgrOdF9lk3caxhBuRATElp5D2hvRDNIYH8L9vLvQp8QfHrP2Zah6OynrGo0Yq0BvNNlVIUe39zg2F0ab346IpDa0dBcA4dNHGqzKcmLKLIn090X3oR+tVfZDhT8MW72sgs8E0NL+0hLmhpKFEZ2opkp9zMklGkfEvH8+Ii3 ssh-key-2022-09-22"
	}
	shape = "VM.Standard.A1.Flex"
	shape_config {
		memory_in_gbs = "12"
		ocpus = "2"
	}
	source_details {
		source_id = "ocid1.image.oc1.ap-tokyo-1.aaaaaaaao3frys5oej5kbvrxagqrgecvlqkjhyh57b4fn6uhai533rvbbela"
		source_type = "image"
	}
}

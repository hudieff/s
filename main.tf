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
	availability_domain = "PoqG:AP-SINGAPORE-1-AD-1"
	compartment_id = "ocid1.tenancy.oc1..aaaaaaaapvykocc5e5xez5gjcfiw7w4um2cqm4ym45soujiytgszi52kftja"
	create_vnic_details {
		assign_private_dns_record = "true"
		assign_public_ip = "true"
		subnet_id = "ocid1.subnet.oc1.ap-singapore-1.aaaaaaaakgi33qr6moztweal2fpthatstjad5ql5trehkqrtbotsvhh6djwa"
	}
	display_name = "instance-20220131-0526"
	instance_options {
		are_legacy_imds_endpoints_disabled = "false"
	}
	metadata = {
		"ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNJ7GL+Vc23YxZEgNbjQ0780v/v7DQ5GeGUD/FC26F6RW9o1dj25mcZg3KAlOv+dlyBMKSwn1yyXESy0VZic6lQVqZnoEQNflQNNPY0P9kN/bUujQdrssbVVxNV9CibqkzzgDZLm3cSK35s05J2ugLDHpwP0+BtH5FiLrHaBFuPT8+3sqFC+eEMmGz8YXJoRt0wCXNrziGMaXqkHOYlc5oAO9BMLjGnLPsabXCBz7IKIdU1udq/7H6KvLvQHRFlYsUEEyrhoQWSt7Z/FfdppuplhfkpLqsJDXdrVXQVdYf5PAHmYa0wNdgafngrdjQwV+C94zMQCewnOntTlN+SCj9 ssh-key-2022-01-30"
	}
	shape = "VM.Standard.A1.Flex"
	shape_config {
		memory_in_gbs = "12"
		ocpus = "2"
	}
	source_details {
		source_id = "ocid1.image.oc1.ap-singapore-1.aaaaaaaab2ljowfao3jj2psrqjtdjbzqonvxodaivx5345apram7ynpoho2a"
		source_type = "image"
	}
}

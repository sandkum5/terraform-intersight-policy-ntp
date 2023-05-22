<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.4.6 |
| <a name="requirement_intersight"></a> [intersight](#requirement\_intersight) | ~> 1.0.36 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_intersight"></a> [intersight](#provider\_intersight) | ~> 1.0.36 |

## Resources

| Name | Type |
|------|------|
| [intersight_ntp_policy.ntp](https://registry.terraform.io/providers/CiscoDevNet/intersight/latest/docs/resources/ntp_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description of NTP Policy | `string` | n/a | yes |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Policy Enabled or Not | `bool` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of NTP Policy | `string` | n/a | yes |
| <a name="input_ntp_servers"></a> [ntp\_servers](#input\_ntp\_servers) | List of NTP Servers | `list(string)` | n/a | yes |
| <a name="input_org_moid"></a> [org\_moid](#input\_org\_moid) | Moid of the Organization | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Policy Tags | `list(map(string))` | n/a | yes |
| <a name="input_timezone"></a> [timezone](#input\_timezone) | Timezone | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ntp"></a> [ntp](#output\_ntp) | Intersight NTP Policy Object |
<!-- END_TF_DOCS -->    
FILES = [
    Dict{String, Any}("sha" => "d3053f59200f5009b74bfed9a3f17d2d06783209", "path" => "secretsmanager-2017-10-17.examples.json"),
    Dict{String, Any}("sha" => "d3053f59200f5009b74bfed9a3f17d2d06783209", "path" => "secretsmanager-2021-01-01.examples.json"),
    Dict{String, Any}("sha" => "40526c64ec05df4f77499c2e0ec544e8818f3015", "path" => "secretsmanager-2017-10-17.min.json"),
    Dict{String, Any}("sha" => "0141ce42b03c3617179452e94af490043cecfdd4", "path" => "secretsmanager-2017-10-17.normal.json"),
    Dict{String, Any}("sha" => "23589621f3cb14d6911f04859f90c1af61bd8573", "path" => "secretsmanager-2017-10-17.paginators.json"),
    Dict{String, Any}("sha" => "0ea7e3b0bbe917eb027880396ac01509becd1fa0", "path" => "securityhub-2018-10-26.examples.json"),
    Dict{String, Any}("sha" => "cb76fc3ad2cce30155cfdf6f2c0c313922391d79", "path" => "securityhub-2018-10-26.min.json"),
    Dict{String, Any}("sha" => "8d144a13919a8c8ca017e073b2eea707d48be5e3", "path" => "securityhub-2018-10-26.normal.json"),
    Dict{String, Any}("sha" => "7726e5357a8eedc8b9f6871702eabd7a8c5d512a", "path" => "securityhub-2018-10-26.paginators.json"),
]


_get_service_and_version_patch = @patch function MockAWS._get_service_and_version(
    filename::String,
    files::Vector,
    auth::GitHub.OAuth2
)
    return split(FILES[1]["path"], '-')
end

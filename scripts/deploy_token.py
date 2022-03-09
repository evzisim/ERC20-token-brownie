from brownie import accounts, config, TokenERC20

initial_supply = 100000000000000000000000000
token_name = "Drachma"
token_symbol = "GRD"


def deploy_token():
    account = accounts.add(config["wallets"]["from_key"])
    erc20_token = TokenERC20.deploy(
        initial_supply,
        token_name,
        token_symbol,
        {"from": account}
    )


def main():
    deploy_token()
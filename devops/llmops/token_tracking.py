def calculate_cost(tokens_used, model="qwen-3-32b"):
    """Calculate the estimated cost of an LLM request."""
    rates = {
        "qwen-3-32b": 0.0001, # Example rate per 1k tokens
        "llama-3-70b": 0.0003
    }
    cost = (tokens_used / 1000) * rates.get(model, 0.0001)
    return round(cost, 6)

def log_token_usage(user_id, tokens):
    print(f"User: {user_id} | Tokens: {tokens} | Estimated Cost: ${calculate_cost(tokens)}")

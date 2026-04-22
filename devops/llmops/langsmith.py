import os
from langsmith import traceable

# Initialize LangSmith Environment
os.environ["LANGCHAIN_TRACING_V2"] = "true"
os.environ["LANGCHAIN_PROJECT"] = "ecommerce-ai-prod"

@traceable(run_type="chain", name="AI Assistant Pipeline")
def trace_agent_run(agent_func, message, deps):
    """LangSmith wrapper for AI agent execution."""
    return agent_func(message, deps=deps)

from django import template

register = template.Library()

@register.filter
def get_item(dictionary, key):
    """Get value from dictionary by key"""
    return dictionary.get(key, 0)

@register.filter
def map_status_total(branches, status):
    """Calculate total for a specific status across all branches"""
    total = 0
    for branch in branches:
        total += branch['statuses'].get(status, 0)
    return total
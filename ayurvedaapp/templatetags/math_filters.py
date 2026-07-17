
from django import template

register = template.Library()

@register.filter
def multiply(value, arg):
    """Multiply value by arg, return as float"""
    try:
        return float(value) * float(arg)
    except (ValueError, TypeError):
        return 0

@register.filter
def divide(value, arg):
    """Divide value by arg, return as float"""
    try:
        if float(arg) == 0:
            return 0
        return float(value) / float(arg)
    except (ValueError, TypeError):
        return 0

@register.filter
def add(value, arg):
    """Add arg to value, return as float"""
    try:
        return float(value) + float(arg)
    except (ValueError, TypeError):
        return 0

@register.filter
def subtract(value, arg):
    """Subtract arg from value, return as float"""
    try:
        return float(value) - float(arg)
    except (ValueError, TypeError):
        return 0


@register.filter
def half(value):
    """Return half of the value"""
    try:
        return float(value) / 2
    except (ValueError, TypeError):
        return 0        

@register.filter
def percentage(value, arg):
    """Calculate percentage: value * arg / 100"""
    try:
        return float(value) * float(arg) / 100
    except (ValueError, TypeError):
        return 0


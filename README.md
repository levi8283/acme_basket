# Acme Widget Co - Basket Pricing System

## Overview

This is a pure Ruby command-line tool that calculates the total cost of a basket for Acme Widget Co, applying discount offers and delivery rules.

## Features

- Strategy-based offers (e.g., buy-one-get-one-half-price)
- Delivery rule engine based on subtotal thresholds
- Easy to extend with new offers or delivery strategies
- Testable and command-line runnable

## Usage

Run from command line:

```bash
ruby basket_runner.rb R01 R01
# Output: Total: $54.37

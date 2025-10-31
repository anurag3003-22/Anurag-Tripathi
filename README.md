# 🏛️ Decentralized Vending Machine by Anurag-Tripathi

A basic Solidity Vending Machine smart contract deployed on Core Testnet 2. This contract allows users to purchase an item for a fixed price and includes owner-only functions for inventory management and fund withdrawal.

---

## ⚙️ Contract Details

| Detail | Value |
| :--- | :--- |
| **Contract Name** | `DecentralizedVendingMachine` |
| **Solidity Version** | `0.8.0` or higher |
| **Network Deployed On** | Core Testnet 2 |
| **Deployed Address** | 0xDF19Ba482dB527Ee98D4E51405928c695a7F34A8 |

---

## 💸 Usage Instructions

### 1. **Buying an Item**

To purchase an item, call the `buyItem()` function and send a minimum of `0.001 ether` with the transaction.

* **Function:** `buyItem()`
* **Required Value:** `>= 0.001 ether`
* **Returns:** Refunds any excess Ether sent above the `itemPrice`.

### 2. **Viewing Inventory**

You can view the current stock of items by calling the public state variable:

* **Variable:** `inventory` (initially set to 10)

---

## 🔒 Owner-Only Functions

The following functions can only be called by the contract owner.

### **Refill Inventory**

* **Function:** `refill(uint _amount)`
* **Description:** Adds a specified `_amount` to the current `inventory` stock.

### **Withdraw Funds**

* **Function:** `withdrawFunds()`
* **Description:** Transfers all Ether currently held in the smart contract's balance to the `owner` address.

---

## 🔗 Source Code

The full contract code is available in the repository file:
[`decentralizedvendingmachine.sol`](decentralizedvendingmachine.sol)

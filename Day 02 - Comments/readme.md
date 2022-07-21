<div align="center">
  <h1> 30 Days Of Solidity: Comments and NatSpec</h1>
  <a class="header-badge" target="_blank" href="https://dev.to/envoy_">
  <img src="https://img.shields.io/badge/dev.to-0A0A0A?style=for-the-badge&logo=devdotto&logoColor=white">
  </a>
  <a class="header-badge" target="_blank" href="https://twitter.com/Envoy_1084">
  <img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/Envoy_1084?style=social">
  </a>

<sub>Author:
<a href="https://dev.to/envoy_" target="_blank">Vedant Chainani</a><br>
<small> June, 2022</small>
</sub>

</div>

[<< Day 1](./../Day%2001%20-%20Licenses%20and%20Pragma/readme.md) | [Day 3 >>](./../Day%2003%20-%20Initializing%20Basic%20Contract/readme.md)

![Day X](./cover.png)

---

# 📔 Day 2

Solidity supports both C-style and C++-style comments, Thus −

- Any text between a // and the end of a line is treated as a comment and is ignored by Solidity Compiler.
- Any text between the characters /_and_/ is treated as a comment. This may span multiple lines.

```solidity
// This is a Single Line Comment

```

```solidity
/*

This is A Multi-Line Comment
It can also Include Emojis 😃

*/

```

### NatSpec Format

Solidity contracts can use a special form of comments to provide rich documentation for functions, return variables and more. This special form is named the Ethereum Natural Language Specification Format (NatSpec).

```solidity
/// This is NatSpec Single Line Comment
/// @title This is a Title
/// @author Author Name
/// @dev Please use this in this way
```

```solidity
/**
This is NatSpec Multi Line comment
This is Line 2
And so on....
*/
```

More on NatSpec - [here](https://docs.soliditylang.org/en/latest/natspec-format.html#)

---

[<< Day 1](./../Day%2001%20-%20Licenses%20and%20Pragma/readme.md) | [Day 3 >>](./../Day%2003%20-%20Initializing%20Basic%20Contract/readme.md)

![Cover](./cover.png)

This is Day `2` of `100` in Solidity Series
Today I Learned About Comments and NatSpec Format in Solidity.

Solidity supports both C-style and C++-style comments, Thus −

- Any text between a // and the end of a line is treated as a comment and is ignored by Solidity Compiler.
- Any text between the characters /*and*/ is treated as a comment. This may span multiple lines.

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

const jwt = require('jsonwebtoken');

module.exports = function authMiddleware(req, res, next) {
  const authHeader = req.headers['authorization'];
  if (!authHeader) {
    return res.status(401).json({ error: 'Missing Authorization header' });
  }

  const token = authHeader.replace(/^Bearer\s+/i, '');
  try {
    // Enforce signature verification with RS256
    res.locals.user = jwt.verify(token, process.env.JWT_PUBLIC_KEY, { algorithms: ["RS256"] });
    return next();
  } catch (err) {
    return res.status(401).json({ error: 'Invalid or expired token' });
  }
}

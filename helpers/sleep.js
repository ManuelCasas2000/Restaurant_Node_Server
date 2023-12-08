const sleep = (seconds) => {
    return new Promise( (resolve) => {
      setTimeout(()=> {
          resolve(true);
      }, seconds * 1000);
    });
  }

module.exports = {
    sleep
}
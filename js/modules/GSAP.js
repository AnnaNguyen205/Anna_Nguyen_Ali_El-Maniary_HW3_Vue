export function initGSAPAnimations() {
  gsap.registerPlugin(ScrollTrigger);

  // Animate header section on page load
  gsap.from("header", {
    opacity: 0,
    y: -50,
    duration: 1.2,
    ease: "power2.out",
  });

  // Animate each game card with a stagger effect
  gsap.from(".game-item-con", {
    opacity: 0,
    y: 40,
    duration: 1,
    stagger: 0.2,
    ease: "power2.out",
    delay: 0.3,
  });

  // Optional: animate footer
  gsap.from("footer", {
    opacity: 0,
    y: 50,
    duration: 1,
    ease: "power2.out",
    delay: 1,
  });

  // Optional: animate info panel when it's revealed
  // You can trigger this from your Vue method when a game is selected
  function animateInfoBox() {
    gsap.from("#info-box", {
      opacity: 0,
      y: 60,
      duration: 0.8,
      ease: "power2.out",
    });
  }

  // Expose the animation to be called elsewhere if needed
  window.animateInfoBox = animateInfoBox;
}

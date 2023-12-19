<script>
    document.querySelector(".spinner-btn").addEventListener("click", function(event) {
        event.preventDefault();

        let isFormValid = true;

        for (let i = 0; i < this.form.elements.length; i++) {
            const element = this.form.elements[i];

            if (element.required && element.value === "") {
                element.focus();

                // element.addEventListener("focus", function() {
                //     this.setCustomValidity("This field is required");
                // });

                // element.addEventListener("blur", function() {
                //     this.setCustomValidity("");
                // });
              
                isFormValid = false;
                break;
            }
        }

        if (isFormValid) {
            this.value = 'Loading...';
            this.setAttribute("disabled", "");
            this.form.submit();

            // Set a timeout to revert the button back after 2 seconds
            setTimeout(() => {
                this.value = "Click me";
                this.removeAttribute("disabled");
            }, 2000);
        }
    });
</script>

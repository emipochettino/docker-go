FROM scratch
ADD main ./
ENV PORT 3000
EXPOSE 3000
CMD ["./main"]
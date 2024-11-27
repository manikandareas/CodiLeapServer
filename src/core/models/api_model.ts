export type ApiResponse<T> = {
  message: string;
  status: string;
  data: T;
};

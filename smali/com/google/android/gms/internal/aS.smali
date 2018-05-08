.class final Lcom/google/android/gms/internal/aS;
.super Ljava/lang/Object;


# instance fields
.field private synthetic Se:Lcom/google/android/gms/internal/aP;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/aP;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aS;->Se:Lcom/google/android/gms/internal/aP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/aP;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aS;-><init>(Lcom/google/android/gms/internal/aP;)V

    return-void
.end method


# virtual methods
.method protected final finalize()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aS;->Se:Lcom/google/android/gms/internal/aP;

    invoke-static {v0}, Lcom/google/android/gms/internal/aP;->a(Lcom/google/android/gms/internal/aP;)Lcom/google/android/gms/common/api/y;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/aP;->d(Lcom/google/android/gms/common/api/y;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

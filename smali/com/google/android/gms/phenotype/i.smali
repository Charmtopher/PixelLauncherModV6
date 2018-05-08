.class public Lcom/google/android/gms/phenotype/i;
.super Ljava/lang/Object;


# instance fields
.field public final adC:Ljava/lang/String;

.field private final adD:Ljava/lang/String;

.field public final adE:Z

.field public final ady:Ljava/lang/String;

.field public final adz:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const-string v3, ""

    const-string v4, ""

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/phenotype/i;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/phenotype/i;->ady:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/phenotype/i;->adz:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/phenotype/i;->adC:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/phenotype/i;->adD:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/phenotype/i;->adE:Z

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Z)Lcom/google/android/gms/phenotype/h;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/phenotype/i;->adE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/phenotype/i;->adC:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/phenotype/i;->adD:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/phenotype/i;->ady:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/phenotype/i;->adz:Landroid/net/Uri;

    invoke-static {v0, p1, v1, v2, p2}, Lcom/google/android/gms/phenotype/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Z)Lcom/google/android/gms/phenotype/h;

    move-result-object p1

    return-object p1
.end method

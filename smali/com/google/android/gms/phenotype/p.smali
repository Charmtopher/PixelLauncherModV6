.class public final Lcom/google/android/gms/phenotype/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/a/h;


# instance fields
.field private synthetic adR:Lcom/google/android/gms/phenotype/h;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/phenotype/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/phenotype/p;->adR:Lcom/google/android/gms/phenotype/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic gu()Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/phenotype/h;->ic()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/phenotype/p;->adR:Lcom/google/android/gms/phenotype/h;

    invoke-static {v1}, Lcom/google/android/gms/phenotype/h;->b(Lcom/google/android/gms/phenotype/h;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/l;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

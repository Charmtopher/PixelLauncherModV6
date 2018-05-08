.class public final Lcom/google/android/gms/phenotype/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/a/h;


# instance fields
.field private synthetic adQ:Lcom/google/android/gms/phenotype/a;

.field private synthetic adR:Lcom/google/android/gms/phenotype/h;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/phenotype/h;Lcom/google/android/gms/phenotype/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/phenotype/o;->adR:Lcom/google/android/gms/phenotype/h;

    iput-object p2, p0, Lcom/google/android/gms/phenotype/o;->adQ:Lcom/google/android/gms/phenotype/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic gu()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/phenotype/o;->adQ:Lcom/google/android/gms/phenotype/a;

    iget-object v1, p0, Lcom/google/android/gms/phenotype/o;->adR:Lcom/google/android/gms/phenotype/h;

    invoke-static {v1}, Lcom/google/android/gms/phenotype/h;->a(Lcom/google/android/gms/phenotype/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/phenotype/a;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/google/android/gms/maps/model/a;
.super Ljava/lang/Object;


# instance fields
.field final abt:Lcom/google/android/gms/dynamic/IObjectWrapper;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->v(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/dynamic/IObjectWrapper;

    iput-object p1, p0, Lcom/google/android/gms/maps/model/a;->abt:Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-void
.end method

.class Lcom/android/launcher3/util/PendingRequestArgs$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 111
    new-instance v0, Lcom/android/launcher3/util/PendingRequestArgs;

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/PendingRequestArgs;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 111
    new-array p1, p1, [Lcom/android/launcher3/util/PendingRequestArgs;

    return-object p1
.end method

.class Lcom/android/systemui/shared/system/GraphicBufferCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/systemui/shared/system/GraphicBufferCompat;
    .locals 1

    .line 52
    new-instance v0, Lcom/android/systemui/shared/system/GraphicBufferCompat;

    invoke-direct {v0, p1}, Lcom/android/systemui/shared/system/GraphicBufferCompat;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/GraphicBufferCompat$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/systemui/shared/system/GraphicBufferCompat;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/systemui/shared/system/GraphicBufferCompat;
    .locals 0

    .line 56
    new-array p1, p1, [Lcom/android/systemui/shared/system/GraphicBufferCompat;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/GraphicBufferCompat$1;->newArray(I)[Lcom/android/systemui/shared/system/GraphicBufferCompat;

    move-result-object p1

    return-object p1
.end method

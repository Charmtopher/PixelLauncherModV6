.class Lcom/android/launcher3/widget/WidgetAddFlowHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 91
    new-instance v0, Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    invoke-direct {v0, p1}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 91
    new-array p1, p1, [Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    return-object p1
.end method
